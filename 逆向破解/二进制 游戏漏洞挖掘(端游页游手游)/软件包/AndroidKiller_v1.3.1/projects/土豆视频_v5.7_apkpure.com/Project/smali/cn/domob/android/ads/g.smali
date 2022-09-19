.class public abstract Lcn/domob/android/ads/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/g$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcn/domob/android/ads/f;

.field protected c:Lcn/domob/android/ads/e;

.field protected d:Lcn/domob/android/ads/b;

.field protected e:Lcn/domob/android/ads/g$a;

.field protected f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/f;Lcn/domob/android/ads/e;Lcn/domob/android/ads/b;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/f;

    .line 78
    iput-object p3, p0, Lcn/domob/android/ads/g;->c:Lcn/domob/android/ads/e;

    .line 79
    iput-object p4, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/b;

    .line 80
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(II)V
.end method

.method protected a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/g$a;->a(Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method public a(Lcn/domob/android/ads/g$a;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    .line 84
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0, p1}, Lcn/domob/android/ads/g$a;->i(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public abstract a(Ljava/util/HashMap;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/g;->f:Landroid/view/View;

    return-object v0
.end method

.method public c()Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/g;->c:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/g$a;->b(Lcn/domob/android/ads/g;)V

    .line 137
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0}, Lcn/domob/android/ads/g$a;->H()V

    .line 149
    :cond_0
    return-void
.end method

.method protected i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0}, Lcn/domob/android/ads/g$a;->I()Landroid/content/Context;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/g;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0}, Lcn/domob/android/ads/g$a;->J()V

    .line 169
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0}, Lcn/domob/android/ads/g$a;->K()V

    .line 175
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0}, Lcn/domob/android/ads/g$a;->L()V

    .line 181
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Lcn/domob/android/ads/g$a;

    invoke-interface {v0}, Lcn/domob/android/ads/g$a;->M()V

    .line 187
    :cond_0
    return-void
.end method
