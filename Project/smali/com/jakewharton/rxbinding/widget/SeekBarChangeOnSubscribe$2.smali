.class Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "SeekBarChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->access$100(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 42
    return-void
.end method
