/**
 * 分页条数
 */
enum PageSizeEnum {
  twenty = 20,
  fifty = 50,
  hundred = 100,
  twoHundred = 200,
  fiveHundred = 500,
}

export default PageSizeEnum;

const pageSizes = Object.values(PageSizeEnum)
  .filter((p) => Number.isFinite(p))
  .map((p) => p.toString());

export { pageSizes };
