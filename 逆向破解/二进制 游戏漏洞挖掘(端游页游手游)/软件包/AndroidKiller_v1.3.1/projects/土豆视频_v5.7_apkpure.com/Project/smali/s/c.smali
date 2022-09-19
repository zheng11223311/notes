.class Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/KeyListener;


# instance fields
.field final synthetic a:Ls/b;


# direct methods
.method constructor <init>(Ls/b;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Ls/c;->a:Ls/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Ls/c;->a:Ls/b;

    invoke-static {v0}, Ls/b;->b(Ls/b;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls/c;->a:Ls/b;

    invoke-static {v0}, Ls/b;->c(Ls/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Ls/c;->a:Ls/b;

    invoke-static {v0}, Ls/b;->b(Ls/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 676
    iget-object v1, p0, Ls/c;->a:Ls/b;

    invoke-static {v1}, Ls/b;->c(Ls/b;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 680
    :cond_0
    return-void
.end method

.method public getInputType()I
    .locals 4

    .prologue
    const/16 v0, 0x80

    const/16 v3, 0xe

    .line 657
    const-string/jumbo v1, "samsung"

    invoke-static {v1}, Ls/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    const-string v1, "0"

    const-string v2, "isSpecialCursor"

    invoke-static {v2}, Lj/i;->g(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_0

    .line 665
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 643
    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 644
    invoke-static {}, Ls/b;->e()Ls/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ls/b;->e()Ls/b;

    move-result-object v1

    invoke-static {v1}, Ls/b;->a(Ls/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-static {}, Ls/b;->e()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->d()V

    .line 651
    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    .line 648
    :cond_2
    const/16 v1, 0x52

    if-ne p3, v1, :cond_0

    goto :goto_0
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 631
    const/16 v0, 0x52

    if-ne p3, v0, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
