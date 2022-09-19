.class public Lio/rong/imkit/model/Event$QuitGroupEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuitGroupEvent"
.end annotation


# instance fields
.field groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lio/rong/imkit/model/Event$QuitGroupEvent;->groupId:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lio/rong/imkit/model/Event$QuitGroupEvent;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 438
    iput-object p1, p0, Lio/rong/imkit/model/Event$QuitGroupEvent;->groupId:Ljava/lang/String;

    .line 439
    return-void
.end method
