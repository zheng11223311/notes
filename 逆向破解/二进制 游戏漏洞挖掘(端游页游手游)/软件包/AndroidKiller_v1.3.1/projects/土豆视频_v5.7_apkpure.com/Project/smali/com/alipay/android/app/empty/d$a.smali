.class Lcom/alipay/android/app/empty/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/empty/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:F

.field d:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 131
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/empty/d$a;-><init>(IF)V

    .line 132
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/empty/d$a;->a:I

    .line 136
    iput p1, p0, Lcom/alipay/android/app/empty/d$a;->b:I

    .line 137
    iput p2, p0, Lcom/alipay/android/app/empty/d$a;->c:F

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/empty/d$a;->d:Ljava/util/List;

    .line 139
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/android/app/empty/d$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/b;

    .line 153
    invoke-interface {v0}, Lcom/alipay/android/app/empty/b;->a()V

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method a(Lcom/alipay/android/app/empty/b;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/empty/d$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/android/app/empty/d$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/alipay/android/app/empty/d$a;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/android/app/empty/d$a;->a:I

    .line 163
    invoke-virtual {p0}, Lcom/alipay/android/app/empty/d$a;->b()Z

    move-result v0

    return v0
.end method

.method b(Lcom/alipay/android/app/empty/b;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/empty/d$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method b()Z
    .locals 3

    .prologue
    .line 176
    iget v0, p0, Lcom/alipay/android/app/empty/d$a;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/empty/d$a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/empty/d$a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/android/app/empty/d$a;->c:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Z
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    iget v1, p0, Lcom/alipay/android/app/empty/d$a;->a:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/empty/d$a;->a:I

    .line 172
    invoke-virtual {p0}, Lcom/alipay/android/app/empty/d$a;->b()Z

    move-result v0

    return v0
.end method
