.class public Lio/rong/imkit/model/LinkTextView;
.super Landroid/widget/TextView;
.source "LinkTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;,
        Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;
    }
.end annotation


# static fields
.field private static listener:Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method static synthetic access$000()Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lio/rong/imkit/model/LinkTextView;->listener:Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;

    return-object v0
.end method


# virtual methods
.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnLinkClickListener(Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;)V
    .locals 0
    .param p1, "listener"    # Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;

    .prologue
    .line 47
    sput-object p1, Lio/rong/imkit/model/LinkTextView;->listener:Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;

    .line 48
    return-void
.end method
