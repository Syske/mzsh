.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
