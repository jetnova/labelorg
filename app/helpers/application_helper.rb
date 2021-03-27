module ApplicationHelper
  def upc_rels(label)
    label.releases.map { |release| release.title }
  end

  def upc_deal_terms(label)
    label.record_deals.map { |deal| deal.end_date}
  end
end
