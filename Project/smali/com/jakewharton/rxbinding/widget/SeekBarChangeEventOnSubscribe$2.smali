.class Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "SeekBarChangeEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 45
    return-void
.end method
