.class final Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;
.super Ljava/lang/Object;
.source "AdapterViewItemLongClickOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final handled:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Lrx/functions/Func0",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local p2, "handled":Lrx/functions/Func0;, "Lrx/functions/Func0<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->view:Landroid/widget/AdapterView;

    .line 18
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->handled:Lrx/functions/Func0;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;)Lrx/functions/Func0;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->handled:Lrx/functions/Func0;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;)Landroid/widget/AdapterView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->view:Landroid/widget/AdapterView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;Lrx/Subscriber;)V

    .line 36
    .local v0, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->view:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    return-void
.end method
