.class final Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;
.super Ljava/lang/Object;
.source "ViewHoverOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Landroid/view/MotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final handled:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lrx/functions/Func1;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/functions/Func1",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "handled":Lrx/functions/Func1;, "Lrx/functions/Func1<-Landroid/view/MotionEvent;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;->view:Landroid/view/View;

    .line 19
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;->handled:Lrx/functions/Func1;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;->handled:Lrx/functions/Func1;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;->view:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/view/MotionEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;Lrx/Subscriber;)V

    .line 36
    .local v0, "listener":Landroid/view/View$OnHoverListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewHoverOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    return-void
.end method
