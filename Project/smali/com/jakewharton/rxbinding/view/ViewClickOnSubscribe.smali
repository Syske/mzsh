.class final Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;
.super Ljava/lang/Object;
.source "ViewClickOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->view:Landroid/view/View;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Void;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;Lrx/Subscriber;)V

    .line 27
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewClickOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 34
    return-void
.end method
