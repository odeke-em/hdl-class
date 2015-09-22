# Notes

- All statements are run concurrently.

- However in `process`, they are run sequentially

- A process without "wait" and without sensitivity list will run forever at time 0;
- process(a) is: (a) a sensitivity list;
- A process can have a sensitivity list or "wait" statements, but not both (and not neither).

- Sensitivity list is a list of signals attached to a process. The signals must change or else the process goes back to the top
