.class Ls/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Ls/b;


# direct methods
.method constructor <init>(Ls/b;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Ls/d;->a:Ls/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 689
    invoke-static {}, Ls/b;->e()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ls/b;->e()Ls/b;

    move-result-object v0

    invoke-static {v0}, Ls/b;->a(Ls/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-static {}, Ls/b;->e()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->d()V

    .line 694
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 692
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
