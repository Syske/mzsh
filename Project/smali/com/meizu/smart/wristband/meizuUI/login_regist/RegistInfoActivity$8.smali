.class Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;
.super Ljava/lang/Object;
.source "RegistInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->initSexView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

.field final synthetic val$btnFemale:Landroid/widget/Button;

.field final synthetic val$btnMale:Landroid/widget/Button;

.field final synthetic val$tvFemale:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field final synthetic val$tvMale:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/widget/Button;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;Landroid/widget/Button;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$btnMale:Landroid/widget/Button;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$tvMale:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$btnFemale:Landroid/widget/Button;

    iput-object p5, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$tvFemale:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 350
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0, v4}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$802(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;I)I

    .line 351
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08024a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/constant/Sex;->convert1(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSex(Lcom/meizu/smart/wristband/constant/Sex;)V

    .line 352
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$btnMale:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$tvMale:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$btnFemale:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->val$tvFemale:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/NoScrollViewPager;->setNoScroll(Z)V

    .line 361
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$1100(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$1200(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$1300(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$1400(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Landroid/view/View;)V

    .line 364
    return-void
.end method
