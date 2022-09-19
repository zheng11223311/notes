.class Lcn/domob/android/ads/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/n;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/n;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/n;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->b(Lcn/domob/android/ads/n;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u5f00\u59cb\u4e0b\u8f7d \u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->c(Lcn/domob/android/ads/n;)V

    .line 212
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 229
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->e(Lcn/domob/android/ads/n;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const/16 v0, 0x201

    if-ne p1, v0, :cond_2

    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->f(Lcn/domob/android/ads/n;)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->b(Lcn/domob/android/ads/n;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->g(Lcn/domob/android/ads/n;)V

    .line 250
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->a(Lcn/domob/android/ads/n;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->h(Lcn/domob/android/ads/n;)V

    .line 223
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$3;->a:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->d(Lcn/domob/android/ads/n;)V

    .line 243
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
