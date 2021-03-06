package net.aicomp

import com.google.common.base.Function
import com.google.common.collect.Lists
import java.util.ArrayList
import java.util.List

import static extension net.aicomp.Utility.*

class Heroine {
	val int _enthusiasm
	val int _numPlayers
	val List<Integer> _revealedLove
	val List<Integer> _realLove

	var int _datedTimes

	new(int enthusiasm, int numPlayers) {
		_enthusiasm = enthusiasm
		_numPlayers = numPlayers
		_revealedLove = Lists.newArrayList()
		_realLove = Lists.newArrayList()
		(1 .. numPlayers).forEach [
			_revealedLove.add(0)
			_realLove.add(0)
		]
		_datedTimes = 0
	}

	def void date(int playerIndex, boolean isWeekday) {
		_realLove.increment(playerIndex, 1)
		if (isWeekday) {
			_revealedLove.increment(playerIndex, 1)
		}
		_datedTimes = _datedTimes + 1
	}

	def filterPlayersByLove(List<Player> players, Function<List<Integer>, Integer> func, boolean real) {
		val allLove = if(real) _realLove else _revealedLove
		val targetLove = func.apply(allLove)
		val targetPlayers = new ArrayList<Player>()
		for (player : players) {
			if (allLove.get(player.index) == targetLove) {
				targetPlayers.add(player)
			}
		}
		targetPlayers
	}

	def refresh() {
		_datedTimes = 0
	}

	def getRevealedLove() {
		_revealedLove
	}

	def getRealLove() {
		_realLove
	}

	def getDatedTimes() {
		_datedTimes
	}

	def getEnthusiasm() {
		return _enthusiasm
	}
}
