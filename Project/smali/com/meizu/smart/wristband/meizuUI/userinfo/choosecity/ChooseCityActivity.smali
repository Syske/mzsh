.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "ChooseCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field cityTitleArray:[Ljava/lang/String;

.field city_listview:Landroid/widget/ListView;

.field context:Landroid/content/Context;

.field countryTitleArray:[Ljava/lang/String;

.field country_listview:Landroid/widget/ListView;

.field locale:Ljava/util/Locale;

.field provinceTitleArray:[Ljava/lang/String;

.field province_listview:Landroid/widget/ListView;

.field relative_title:Landroid/widget/RelativeLayout;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    .line 31
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->countryTitleArray:[Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->provinceTitleArray:[Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->cityTitleArray:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->getProvincedata(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->getBackCity(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->getCitydata(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changeVisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->country_listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->finish()V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->province_listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->province_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->country_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->city_listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->city_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->province_listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getBackCity(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    const v3, 0x7f0e0270

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    .local v1, "city_textview":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "cityName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "updatecity"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->finish()V

    .line 111
    return-void
.end method

.method private getCitydata(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;

    invoke-direct {v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;-><init>()V

    .line 187
    .local v7, "wechatCityServer":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;
    const/4 v0, 0x0

    .line 189
    .local v0, "allData":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8, v9}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getAllData(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    invoke-virtual {v7, v0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getSub(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 195
    .local v5, "size":I
    if-nez v5, :cond_1

    .line 196
    const/4 v3, 0x0

    .line 206
    :cond_0
    return-object v3

    .line 190
    .end local v4    # "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "size":I
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "size":I
    :cond_1
    new-array v8, v5, [Ljava/lang/String;

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->cityTitleArray:[Ljava/lang/String;

    .line 199
    new-array v3, v5, [Ljava/lang/String;

    .line 200
    .local v3, "provinceArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 201
    .local v6, "tempArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 202
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 203
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->cityTitleArray:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    aput-object v9, v8, v2

    .line 204
    const/4 v8, 0x1

    aget-object v8, v6, v8

    aput-object v8, v3, v2

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getCountrydata()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 142
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;-><init>()V

    .line 143
    .local v6, "wechatCityServer":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;
    const/4 v0, 0x0

    .line 145
    .local v0, "allData":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v7, v8}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getAllData(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 149
    :goto_0
    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getRoot(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "countryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->countryTitleArray:[Ljava/lang/String;

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    .line 152
    .local v1, "countryArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 153
    .local v5, "tempArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 154
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 155
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->countryTitleArray:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    aput-object v8, v7, v4

    .line 156
    const/4 v7, 0x1

    aget-object v7, v5, v7

    aput-object v7, v1, v4

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 146
    .end local v1    # "countryArray":[Ljava/lang/String;
    .end local v2    # "countryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "tempArray":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "countryArray":[Ljava/lang/String;
    .restart local v2    # "countryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    .restart local v5    # "tempArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private getProvincedata(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;

    invoke-direct {v7}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;-><init>()V

    .line 163
    .local v7, "wechatCityServer":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;
    const/4 v0, 0x0

    .line 165
    .local v0, "allData":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8, v9}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getAllData(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    invoke-virtual {v7, v0, p1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/WechatCityServer;->getSub(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 170
    .local v4, "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 171
    .local v5, "size":I
    if-nez v5, :cond_1

    .line 172
    const/4 v3, 0x0

    .line 182
    :cond_0
    return-object v3

    .line 166
    .end local v4    # "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "size":I
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "provinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "size":I
    :cond_1
    new-array v8, v5, [Ljava/lang/String;

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->provinceTitleArray:[Ljava/lang/String;

    .line 175
    new-array v3, v5, [Ljava/lang/String;

    .line 176
    .local v3, "provinceArray":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 177
    .local v6, "tempArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 178
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "\\|"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 179
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->provinceTitleArray:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    aput-object v9, v8, v2

    .line 180
    const/4 v8, 0x1

    aget-object v8, v6, v8

    aput-object v8, v3, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initListListenner()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->country_listview:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->province_listview:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->city_listview:Landroid/widget/ListView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 52
    const v1, 0x7f0e0075

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->tv_title:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0e035f

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->relative_title:Landroid/widget/RelativeLayout;

    .line 54
    const v1, 0x7f0e0272

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->country_listview:Landroid/widget/ListView;

    .line 55
    const v1, 0x7f0e0273

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->province_listview:Landroid/widget/ListView;

    .line 56
    const v1, 0x7f0e0274

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->city_listview:Landroid/widget/ListView;

    .line 58
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->tv_title:Landroid/widget/TextView;

    const v2, 0x7f0800d1

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->relative_title:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->getCountrydata()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 61
    .local v0, "cityAdapter":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->country_listview:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->initListListenner()V

    .line 63
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    const v0, 0x7f0e035f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->changeVisible()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    .line 45
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    :goto_0
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->locale:Ljava/util/Locale;

    .line 48
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->initView()V

    .line 49
    return-void

    .line 46
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 115
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->changeVisible()V

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040080

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->setContentView(I)V

    .line 38
    return-void
.end method
