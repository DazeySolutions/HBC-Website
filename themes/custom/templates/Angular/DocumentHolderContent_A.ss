{
    "title": $Header,
    "documents":{
        <% loop OrganizeDocuments %>
        "year": $year,
        "months": {
            <% loop Months %>
            "month":$Month,
            "days": {
                <% loop Days %>
                "day":$Num,
                "link":$Link
            }
        }
    }
}