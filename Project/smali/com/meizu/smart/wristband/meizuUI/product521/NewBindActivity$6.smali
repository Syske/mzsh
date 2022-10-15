.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$6;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->forceToOTA(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    return-void
.end method
