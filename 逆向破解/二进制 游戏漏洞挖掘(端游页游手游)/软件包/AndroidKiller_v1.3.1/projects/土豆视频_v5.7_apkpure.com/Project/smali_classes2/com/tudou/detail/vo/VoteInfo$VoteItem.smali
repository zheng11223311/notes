.class public Lcom/tudou/detail/vo/VoteInfo$VoteItem;
.super Ljava/lang/Object;
.source "VoteInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/VoteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoteItem"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public mPercent:I

.field public picUrl:Ljava/lang/String;

.field public voteId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
