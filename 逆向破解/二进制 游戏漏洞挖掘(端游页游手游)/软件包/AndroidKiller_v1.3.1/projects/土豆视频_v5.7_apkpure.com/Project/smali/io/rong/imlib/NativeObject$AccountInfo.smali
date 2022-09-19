.class public Lio/rong/imlib/NativeObject$AccountInfo;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field private accountId:[B

.field private accountName:[B

.field private accountType:I

.field private accountUri:[B

.field private extra:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()[B
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountId:[B

    return-object v0
.end method

.method public getAccountName()[B
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountName:[B

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountType:I

    return v0
.end method

.method public getAccountUri()[B
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountUri:[B

    return-object v0
.end method

.method public getExtra()[B
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lio/rong/imlib/NativeObject$AccountInfo;->extra:[B

    return-object v0
.end method

.method public setAccountId([B)V
    .locals 0
    .param p1, "accountId"    # [B

    .prologue
    .line 632
    iput-object p1, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountId:[B

    .line 633
    return-void
.end method

.method public setAccountName([B)V
    .locals 0
    .param p1, "accountName"    # [B

    .prologue
    .line 640
    iput-object p1, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountName:[B

    .line 641
    return-void
.end method

.method public setAccountType(I)V
    .locals 0
    .param p1, "accountType"    # I

    .prologue
    .line 664
    iput p1, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountType:I

    .line 665
    return-void
.end method

.method public setAccountUri([B)V
    .locals 0
    .param p1, "accountUri"    # [B

    .prologue
    .line 648
    iput-object p1, p0, Lio/rong/imlib/NativeObject$AccountInfo;->accountUri:[B

    .line 649
    return-void
.end method

.method public setExtra([B)V
    .locals 0
    .param p1, "extra"    # [B

    .prologue
    .line 656
    iput-object p1, p0, Lio/rong/imlib/NativeObject$AccountInfo;->extra:[B

    .line 657
    return-void
.end method
