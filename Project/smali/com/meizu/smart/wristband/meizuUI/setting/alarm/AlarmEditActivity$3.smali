.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;
.super Ljava/lang/Object;
.source "AlarmEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->showMultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

.field final synthetic val$ad:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->val$ad:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 576
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->val$ad:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 577
    const-string v1, ""

    .line 578
    .local v1, "strRepeat":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 579
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 581
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v3, v3, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->radioArray:[Landroid/widget/CheckBox;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 586
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmEditActivity;->array_check:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_1

    .line 589
    :cond_2
    return-void
.end method
