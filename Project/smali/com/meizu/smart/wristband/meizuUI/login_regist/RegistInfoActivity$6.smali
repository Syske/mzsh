.class Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;
.super Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$OnWheelViewListener;
.source "RegistInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initBirthdayView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

.field final synthetic val$wvM:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

.field final synthetic val$wvY:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$OnWheelViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(ILjava/lang/String;)V
    .locals 3
    .param p1, "selectedIndex"    # I
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$6;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    goto :goto_0
.end method
