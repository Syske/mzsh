.class Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->initListListenner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    iget-object v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->provinceTitleArray:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "cityArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 87
    .local v0, "cityAdapter":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->city_listview:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->province_listview:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->city_listview:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 93
    .end local v0    # "cityAdapter":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    invoke-static {v2, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;Landroid/view/View;)V

    goto :goto_0
.end method
