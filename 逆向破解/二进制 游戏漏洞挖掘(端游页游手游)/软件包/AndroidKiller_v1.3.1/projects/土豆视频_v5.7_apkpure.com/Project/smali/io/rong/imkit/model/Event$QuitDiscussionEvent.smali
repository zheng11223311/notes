.class public Lio/rong/imkit/model/Event$QuitDiscussionEvent;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuitDiscussionEvent"
.end annotation


# instance fields
.field discussionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "discussionId"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lio/rong/imkit/model/Event$QuitDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 347
    return-void
.end method


# virtual methods
.method public getDiscussionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lio/rong/imkit/model/Event$QuitDiscussionEvent;->discussionId:Ljava/lang/String;

    return-object v0
.end method

.method public setDiscussionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "discussionId"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lio/rong/imkit/model/Event$QuitDiscussionEvent;->discussionId:Ljava/lang/String;

    .line 355
    return-void
.end method
