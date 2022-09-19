.class public abstract Lcom/alipay/android/mini/uielement/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/c;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected d:Lr/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/j;->a:Z

    return-void
.end method


# virtual methods
.method public E()Lr/h;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->d:Lr/h;

    return-object v0
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/j;->a:Z

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(IIII)V
.end method

.method protected final a(Ljava/lang/Object;Lr/a;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->d:Lr/h;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->d:Lr/h;

    new-instance v1, Lr/c;

    invoke-direct {v1, p2}, Lr/c;-><init>(Lr/a;)V

    invoke-interface {v0, p1, v1}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    .line 35
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;Lr/c;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->d:Lr/h;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/j;->d:Lr/h;

    invoke-interface {v0, p1, p2}, Lr/h;->a(Ljava/lang/Object;Ld/b;)Z

    .line 41
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/Object;[Lr/a;)V
    .locals 3

    .prologue
    .line 44
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 45
    invoke-virtual {p0, p1, v2}, Lcom/alipay/android/mini/uielement/j;->a(Ljava/lang/Object;Lr/a;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "cell"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/j;->a:Z

    .line 66
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/j;->b:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "vertical-align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/j;->c:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public a(Lr/h;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/j;->d:Lr/h;

    .line 51
    return-void
.end method

.method public abstract b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Ljava/lang/Object;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract e()I
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Lorg/json/JSONObject;
.end method
