.class public Lcn/domob/android/ads/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/t;

.field private b:Lcn/domob/android/ads/t$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Init and config present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcn/domob/android/ads/t$d;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/t$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    .line 86
    return-void
.end method


# virtual methods
.method public a(I)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->e(Lcn/domob/android/ads/t$d;I)I

    .line 190
    return-object p0
.end method

.method public a(II)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;I)I

    .line 90
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p2}, Lcn/domob/android/ads/t$d;->b(Lcn/domob/android/ads/t$d;I)I

    .line 91
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 185
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/InterstitialAd$BorderType;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/InterstitialAd$BorderType;)Lcn/domob/android/ads/InterstitialAd$BorderType;

    .line 180
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$b;

    .line 162
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$c;

    .line 157
    return-object p0
.end method

.method public a(Z)Lcn/domob/android/ads/t$a;
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Close button is needed for present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Z)Z

    .line 100
    return-object p0
.end method

.method public a(ZF)Lcn/domob/android/ads/t$a;
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force show is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->b(Lcn/domob/android/ads/t$d;Z)Z

    .line 127
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    float-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->c(Lcn/domob/android/ads/t$d;I)I

    .line 130
    :cond_0
    return-object p0
.end method

.method public a(ZZZZ)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->e(Lcn/domob/android/ads/t$d;Z)Z

    .line 167
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p2}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;Z)Z

    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p3}, Lcn/domob/android/ads/t$d;->g(Lcn/domob/android/ads/t$d;Z)Z

    .line 169
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p4}, Lcn/domob/android/ads/t$d;->h(Lcn/domob/android/ads/t$d;Z)Z

    .line 170
    return-object p0
.end method

.method public a([I)Lcn/domob/android/ads/t$a;
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 108
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Close button offset x: %d y: %d"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    aget v4, p1, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    aget v4, p1, v6

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;[I)[I

    .line 113
    :goto_0
    return-object p0

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;[I)[I

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->a:Lcn/domob/android/ads/t;

    invoke-virtual {v0}, Lcn/domob/android/ads/t;->a()V

    .line 205
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcn/domob/android/ads/t;

    iget-object v1, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/t;-><init>(Landroid/content/Context;Lcn/domob/android/ads/t$1;)V

    iput-object v0, p0, Lcn/domob/android/ads/t$a;->a:Lcn/domob/android/ads/t;

    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->a:Lcn/domob/android/ads/t;

    iget-object v1, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1, v1}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;Landroid/view/View;Lcn/domob/android/ads/t$d;)V

    .line 201
    return-void
.end method

.method public b(I)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;I)I

    .line 195
    return-object p0
.end method

.method public b(Z)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;Z)Z

    .line 152
    return-object p0
.end method

.method public b(ZF)Lcn/domob/android/ads/t$a;
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto close is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->c(Lcn/domob/android/ads/t$d;Z)Z

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    float-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;I)I

    .line 147
    :cond_0
    return-object p0
.end method

.method public c(Z)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->i(Lcn/domob/android/ads/t$d;Z)Z

    .line 175
    return-object p0
.end method
