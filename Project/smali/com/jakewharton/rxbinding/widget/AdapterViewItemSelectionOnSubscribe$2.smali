.class Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$2;
.super Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;
.source "AdapterViewItemSelectionOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;

    invoke-direct {p0}, Lcom/jakewharton/rxbinding/internal/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->access$000(Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;)Landroid/widget/AdapterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 41
    return-void
.end method
