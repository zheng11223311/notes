.class public Lcn/com/iresearch/mapptracker/dao/SessionInfo;
.super Lcn/com/iresearch/mapptracker/dao/a;


# annotations
.annotation runtime Lcn/com/iresearch/mapptracker/a/a/a/e;
    a = "SessionInfo"
.end annotation


# instance fields
.field public _id:I
    .annotation runtime Lcn/com/iresearch/mapptracker/a/a/a/a;
        a = "infoId"
    .end annotation
.end field

.field public duration:J

.field public end_time:J

.field public inapp:J

.field public page_name:Ljava/lang/String;

.field public start_time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcn/com/iresearch/mapptracker/dao/a;-><init>()V

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->start_time:J

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->end_time:J

    const-string v0, ""

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->page_name:Ljava/lang/String;

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->inapp:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->duration:J

    return-wide v0
.end method

.method public getEnd_time()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->end_time:J

    return-wide v0
.end method

.method public getInapp()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->inapp:J

    return-wide v0
.end method

.method public getPage_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->page_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->start_time:J

    return-wide v0
.end method

.method public get_id()I
    .locals 1

    iget v0, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->_id:I

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->duration:J

    return-void
.end method

.method public setEnd_time(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->end_time:J

    return-void
.end method

.method public setInapp(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->inapp:J

    return-void
.end method

.method public setPage_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->page_name:Ljava/lang/String;

    return-void
.end method

.method public setStart_time(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->start_time:J

    return-void
.end method

.method public set_id(I)V
    .locals 0

    iput p1, p0, Lcn/com/iresearch/mapptracker/dao/SessionInfo;->_id:I

    return-void
.end method
