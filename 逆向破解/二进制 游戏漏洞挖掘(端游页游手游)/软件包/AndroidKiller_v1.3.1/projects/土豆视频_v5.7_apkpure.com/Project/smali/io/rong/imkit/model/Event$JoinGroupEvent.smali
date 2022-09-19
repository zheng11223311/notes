.class public Lio/rong/imkit/model/Event$JoinGroupEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JoinGroupEvent"
.end annotation


# instance fields
.field groupId:Ljava/lang/String;

.field groupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinGroupEvent;->groupId:Ljava/lang/String;

    .line 406
    iput-object p2, p0, Lio/rong/imkit/model/Event$JoinGroupEvent;->groupName:Ljava/lang/String;

    .line 407
    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lio/rong/imkit/model/Event$JoinGroupEvent;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lio/rong/imkit/model/Event$JoinGroupEvent;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinGroupEvent;->groupId:Ljava/lang/String;

    .line 415
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, Lio/rong/imkit/model/Event$JoinGroupEvent;->groupName:Ljava/lang/String;

    .line 423
    return-void
.end method
