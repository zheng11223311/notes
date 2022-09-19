.class public Lorg/openad/common/error/CommonErrorDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private mCode:I

.field private mDesc:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, ""

    const/high16 v1, -0x80000000

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lorg/openad/common/error/CommonErrorDescriptor;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mCode:I

    invoke-virtual {p0, p1}, Lorg/openad/common/error/CommonErrorDescriptor;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/openad/common/error/CommonErrorDescriptor;->setCode(I)V

    invoke-virtual {p0, p3}, Lorg/openad/common/error/CommonErrorDescriptor;->setDesc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mCode:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 2

    invoke-virtual {p0}, Lorg/openad/common/error/CommonErrorDescriptor;->getCode()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mCode:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/openad/common/error/CommonErrorDescriptor;->mStatus:Ljava/lang/String;

    return-void
.end method
