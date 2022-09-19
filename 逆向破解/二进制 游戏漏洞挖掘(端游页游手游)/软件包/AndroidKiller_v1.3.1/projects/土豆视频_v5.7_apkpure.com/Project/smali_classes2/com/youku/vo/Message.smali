.class public Lcom/youku/vo/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public isReaded:Z

.field public latestcontent:Ljava/lang/String;

.field public latesttime:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public privatemsgid:Ljava/lang/String;

.field public updateTime_str:Ljava/lang/String;

.field public user2Id:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/Message;->isReaded:Z

    return-void
.end method
