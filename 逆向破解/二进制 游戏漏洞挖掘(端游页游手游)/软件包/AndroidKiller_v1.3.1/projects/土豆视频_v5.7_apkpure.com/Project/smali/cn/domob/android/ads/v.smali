.class public Lcn/domob/android/ads/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/v;->f:Z

    .line 16
    iput-object p1, p0, Lcn/domob/android/ads/v;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcn/domob/android/ads/v;->b:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcn/domob/android/ads/v;->c:I

    .line 19
    iput-object p4, p0, Lcn/domob/android/ads/v;->d:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcn/domob/android/ads/v;->e:Ljava/lang/String;

    .line 21
    iput-boolean p6, p0, Lcn/domob/android/ads/v;->f:Z

    .line 22
    iput-object p7, p0, Lcn/domob/android/ads/v;->g:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcn/domob/android/ads/v;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcn/domob/android/ads/v;->c:I

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcn/domob/android/ads/v;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcn/domob/android/ads/v;->f:Z

    .line 35
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/domob/android/ads/v;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcn/domob/android/ads/v;->f:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/domob/android/ads/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/domob/android/ads/v;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/domob/android/ads/v;->e:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/v;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcn/domob/android/ads/v;->g:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/v;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/v;->g:Ljava/lang/String;

    return-object v0
.end method
