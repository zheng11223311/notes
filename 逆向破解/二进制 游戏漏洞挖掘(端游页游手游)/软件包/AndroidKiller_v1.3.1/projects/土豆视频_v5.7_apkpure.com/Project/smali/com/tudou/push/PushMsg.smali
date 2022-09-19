.class public Lcom/tudou/push/PushMsg;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_CHAT:I = 0x8

.field public static final TYPE_CUSTOM:I = 0x3

.field public static final TYPE_GAME_DETAIL:I = 0x7

.field public static final TYPE_GAME_DOWNLOAD:I = 0x5

.field public static final TYPE_GAME_LIST:I = 0x6

.field public static final TYPE_NEWVIDEO:I = 0x4

.field public static final TYPE_UPDATE:I = 0x1


# instance fields
.field public albumid:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public ep:I

.field public game_id:Ljava/lang/String;

.field public game_type:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public imageurl:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public itemcode:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public pkg_name:Ljava/lang/String;

.field public playlistcode:Ljava/lang/String;

.field public showId:Ljava/lang/String;

.field public showname:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public updatecontent:Ljava/lang/String;

.field public updateurl:Ljava/lang/String;

.field public updateversion:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public ver_code:I

.field public videoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "2"

    iput-object v0, p0, Lcom/tudou/push/PushMsg;->source:Ljava/lang/String;

    return-void
.end method
