'reach 0.1';

const Player = {
  getHand: Fun([], UInt),
  seeOutcome: Fun([UInt], Null),
};

const Admin = {
  getHand: Fun([], UInt),
  seeOutcome: Fun([UInt], Null),
};

export const main = Reach.App(() => {
  const Alice = Participant('Alice', {
    ...Player,
  });

  const Bob = Participant('Bob', {
    ...Admin,
  });
  init();

  Alice.only(() => {
    const handAlice = declassify(interact.getHand());
  });

  Alice.publish(handAlice);
  commit();
});
