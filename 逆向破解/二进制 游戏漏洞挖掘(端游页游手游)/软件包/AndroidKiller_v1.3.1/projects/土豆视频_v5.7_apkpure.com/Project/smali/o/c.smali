.class public abstract Lo/c;
.super Lm/a;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = -0xa


# instance fields
.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method protected constructor <init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lm/a;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/e;)V

    .line 44
    iput-boolean v1, p0, Lo/c;->n:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lo/c;->o:I

    .line 49
    iput-boolean v1, p0, Lo/c;->m:Z

    .line 50
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lo/c;->m:Z

    .line 66
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lo/c;->n:Z

    .line 74
    return-void
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
.end method

.method public n()V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lo/c;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/c;->o:I

    .line 54
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lo/c;->o:I

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lo/c;->m:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lo/c;->n:Z

    return v0
.end method
