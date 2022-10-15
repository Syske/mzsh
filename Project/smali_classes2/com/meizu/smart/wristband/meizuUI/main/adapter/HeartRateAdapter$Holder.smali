.class Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
.super Ljava/lang/Object;
.source "HeartRateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field heart_rate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field heart_time:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
