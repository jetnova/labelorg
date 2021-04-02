module ApplicationHelper
  def upc_rels(label)
    label.releases.map { |release| release.title if release.release_date > 1.month.before(Date.today) }
  end

  def upc_deal_terms(label)
    label.record_deals.map { |deal| [deal.act.name, deal.end_date] }
  end
end
