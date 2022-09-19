.class public Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;
.super Ljava/lang/Object;
.source "IFavouriteVedio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/favourite/IFavouriteVedio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetListCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public onSucess(Lcom/youku/vo/FavouriteVideoResult;I)V
    .locals 0
    .param p1, "favouritevideoresult"    # Lcom/youku/vo/FavouriteVideoResult;
    .param p2, "dataType"    # I

    .prologue
    .line 73
    return-void
.end method
