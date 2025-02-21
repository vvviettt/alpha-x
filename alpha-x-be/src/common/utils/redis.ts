export const generateBlacklistAccessTokenKey = (token: string) =>
  `jwt:black-list:access:${token}`;

export const generateBlacklistRefreshTokenKey = (token: string) =>
  `jwt:black-list:refresh:${token}`;
