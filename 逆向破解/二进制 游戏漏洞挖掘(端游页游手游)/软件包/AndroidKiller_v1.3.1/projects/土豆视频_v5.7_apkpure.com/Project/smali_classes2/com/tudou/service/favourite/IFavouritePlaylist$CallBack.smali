.class public Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;
.super Ljava/lang/Object;
.source "IFavouritePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/favourite/IFavouritePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 55
    return-void
.end method
