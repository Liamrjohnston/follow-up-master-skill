# Follow-Up Master

A Claude skill for leads that went quiet. Paste the conversation. It works out the most likely reason they stopped replying, quotes the words in the thread that show it, writes the one message to send today for that reason, plans at most two more, and tells you when to stop.

It never invents a discount, a deadline or scarcity, never guilts the lead, and never promises a reply.

## What it checks

- **The last real step they agreed to.** "Sounds great" and "let me think" don't count.
- **The moment the energy dropped**, and the question they asked just before it.
- **Who actually decides.** If it's someone else, it helps your contact sell it inside instead of going around them.
- **What you know that they don't.** The option or workaround you never mentioned is often the fix.
- **How many times you've already chased.** Three unanswered means one last, kind message, then stop.

It picks from eleven reasons: price, timing, wrong decision maker, risk worry, indecision, forgot or busy, never committed, status quo, not listened to, embarrassed, and a real no.

## Install

One step, in a terminal:

```
git clone https://github.com/Liamrjohnston/follow-up-master-skill follow-up-master-skill && bash follow-up-master-skill/install.sh
```

It copies the skill into `~/.claude/skills` and asks before replacing anything. Then start a new Claude Code session and type `/follow-up-master`.

## How it was tested

A blind test on three made-up small-business threads (a kitchen remodeller, a brand designer, a personal trainer), each with a hidden reason for the silence that only the judge saw. Four setups answered each one on the same model (`claude-sonnet-4-5`): plain Claude, a one-line prompt, the strongest existing follow-up skill we found ([ghosted-after-the-demo](https://github.com/mardab96/b2b-lead-generation-claude-skills), a small repo), and Follow-Up Master. A separate model (`claude-opus-4-1`) judged the shuffled answers without knowing which was which, twice.

Version 1.1.0 won 5 of 6 judgements, averaging 8.7 out of 10, against 7.8 for the benchmark and 4.8 for plain Claude. The judge is an AI and the cases are made up, so treat this as a strong sign, not proof it gets you more replies.

## Credits

See [follow-up-master/CREDITS.md](follow-up-master/CREDITS.md). MIT licence.
