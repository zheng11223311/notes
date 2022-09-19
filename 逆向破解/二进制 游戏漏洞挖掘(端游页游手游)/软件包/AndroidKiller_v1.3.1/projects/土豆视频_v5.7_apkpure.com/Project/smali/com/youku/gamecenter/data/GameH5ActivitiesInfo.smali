.class public Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;
.super Ljava/lang/Object;
.source "GameH5ActivitiesInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/youku/gamecenter/data/IResponseable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->id:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->url:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameH5ActivitiesInfo;->name:Ljava/lang/String;

    return-void
.end method
