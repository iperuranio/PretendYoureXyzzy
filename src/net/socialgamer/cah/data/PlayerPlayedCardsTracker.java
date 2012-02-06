/**
 * Copyright (c) 2012, Andy Janata
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are permitted
 * provided that the following conditions are met:
 * 
 * * Redistributions of source code must retain the above copyright notice, this list of conditions
 *   and the following disclaimer.
 * * Redistributions in binary form must reproduce the above copyright notice, this list of
 *   conditions and the following disclaimer in the documentation and/or other materials provided
 *   with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 * WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

package net.socialgamer.cah.data;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import net.socialgamer.cah.db.WhiteCard;


/**
 * Class to track which card(s) have been played by players. Can get the card(s) for a player, and
 * also which player played a given card.
 * 
 * @author Andy Janata (ajanata@socialgamer.net)
 */
public class PlayerPlayedCardsTracker {
  /**
   * Forward mapping of player to cards.
   */
  private final Map<Player, List<WhiteCard>> playerCardMap = new HashMap<Player, List<WhiteCard>>();
  /**
   * Reverse mapping of cards to player.
   */
  private final Map<Integer, Player> reverseIdMap = new HashMap<Integer, Player>();

  /**
   * Add a played card to the mappings.
   * 
   * @param player
   *          Player which played the card.
   * @param card
   *          The card the player played.
   */
  public void addCard(final Player player, final WhiteCard card) {
    List<WhiteCard> cards = playerCardMap.get(player);
    if (cards == null) {
      cards = new ArrayList<WhiteCard>(3);
      playerCardMap.put(player, cards);
    }
    reverseIdMap.put(card.getId(), player);
    cards.add(card);
  }

  /**
   * Get the {@code Player} that played a card, given the card's ID.
   * 
   * @param id
   *          Card ID to check.
   * @return The {@code Player} that played the card.
   */
  public Player getPlayerForId(final int id) {
    return reverseIdMap.get(id);
  }

  /**
   * Determine whether a player has played any cards this round.
   * 
   * @param player
   *          Player to check.
   * @return True if the player has played any cards this round.
   */
  public boolean hasPlayer(final Player player) {
    return playerCardMap.containsKey(player);
  }

  /**
   * @param player
   * @return The list of cards {@code player} has played this round, or {@code null} if they have
   *         not played any cards.
   */
  public List<WhiteCard> getCards(final Player player) {
    return playerCardMap.get(player);
  }

  /**
   * Remove and return a player's cards from the played cards tracking.
   * 
   * @param player
   *          Player to remove.
   * @return The cards the player had played.
   */
  public List<WhiteCard> remove(final Player player) {
    final List<WhiteCard> cards = playerCardMap.remove(player);
    if (cards != null && cards.size() > 0) {
      reverseIdMap.remove(cards.get(0).getId());
    }
    return cards;
  }

  /**
   * @return The number of players that have played this round.
   */
  public int size() {
    return playerCardMap.size();
  }

  /**
   * @return A {@code Set} of all players that have played this round.
   */
  public Set<Player> playedPlayers() {
    return playerCardMap.keySet();
  }

  /**
   * Clear both the forward and reverse card mappings.
   */
  public void clear() {
    playerCardMap.clear();
    reverseIdMap.clear();
  }

  /**
   * @return A {@code Collection} of all played card lists.
   */
  public Collection<List<WhiteCard>> cards() {
    return playerCardMap.values();
  }
}