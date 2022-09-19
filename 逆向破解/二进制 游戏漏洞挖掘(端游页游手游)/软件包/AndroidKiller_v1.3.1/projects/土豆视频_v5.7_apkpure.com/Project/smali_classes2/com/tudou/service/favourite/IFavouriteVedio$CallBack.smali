.class public Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
.super Ljava/lang/Object;
.source "IFavouriteVedio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/favourite/IFavouriteVedio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method
