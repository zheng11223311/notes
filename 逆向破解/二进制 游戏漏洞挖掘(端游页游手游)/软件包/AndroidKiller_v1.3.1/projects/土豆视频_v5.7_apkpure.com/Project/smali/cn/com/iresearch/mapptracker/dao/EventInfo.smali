.class public Lcn/com/iresearch/mapptracker/dao/EventInfo;
.super Lcn/com/iresearch/mapptracker/dao/a;


# annotations
.annotation runtime Lcn/com/iresearch/mapptracker/a/a/a/e;
    a = "EventInfo"
.end annotation


# instance fields
.field public _id:I
    .annotation runtime Lcn/com/iresearch/mapptracker/a/a/a/a;
        a = "infoId"
    .end annotation
.end field

.field public duration:J

.field private end_time:J

.field public event_id:Ljava/lang/String;

.field private event_params:Ljava/lang/String;

.field public eventisStart:Z

.field public first_start_time:J

.field private label:Ljava/lang/String;

.field public open_count:J

.field private start_time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcn/com/iresearch/mapptracker/dao/a;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->open_count:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->eventisStart:Z

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->duration:J

    return-wide v0
.end method

.method public getEnd_time()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->end_time:J

    return-wide v0
.end method

.method public getEvent_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->event_id:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent_params()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->event_params:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen_count()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->open_count:J

    return-wide v0
.end method

.method public getStart_time()J
    .locals 2

    iget-wide v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->start_time:J

    return-wide v0
.end method

.method public get_id()I
    .locals 1

    iget v0, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->_id:I

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->duration:J

    return-void
.end method

.method public setEnd_time(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->end_time:J

    return-void
.end method

.method public setEvent_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->event_id:Ljava/lang/String;

    return-void
.end method

.method public setEvent_params(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->event_params:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public setOpen_count(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->open_count:J

    return-void
.end method

.method public setStart_time(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->start_time:J

    return-void
.end method

.method public set_id(I)V
    .locals 0

    iput p1, p0, Lcn/com/iresearch/mapptracker/dao/EventInfo;->_id:I

    return-void
.end method
