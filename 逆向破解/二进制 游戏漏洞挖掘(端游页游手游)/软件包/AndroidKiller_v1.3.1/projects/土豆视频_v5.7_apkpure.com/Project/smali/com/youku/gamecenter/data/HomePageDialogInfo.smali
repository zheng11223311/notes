.class public Lcom/youku/gamecenter/data/HomePageDialogInfo;
.super Ljava/lang/Object;
.source "HomePageDialogInfo.java"

# interfaces
.implements Lcom/youku/gamecenter/data/IResponseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    .line 12
    return-void
.end method
