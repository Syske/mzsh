.class Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$3;
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
    .line 96
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 99
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;

    invoke-static {v0, p2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/ChooseCityActivity;Landroid/view/View;)V

    .line 100
    return-void
.end method
