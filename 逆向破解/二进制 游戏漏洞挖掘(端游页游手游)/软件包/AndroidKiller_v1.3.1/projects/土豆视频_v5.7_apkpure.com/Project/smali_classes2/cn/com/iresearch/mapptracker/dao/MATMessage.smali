.class public Lcn/com/iresearch/mapptracker/dao/MATMessage;
.super Lcn/com/iresearch/mapptracker/dao/a;


# instance fields
.field public flag:Z

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/com/iresearch/mapptracker/dao/a;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->flag:Z

    return v0
.end method

.method public setFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->flag:Z

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/iresearch/mapptracker/dao/MATMessage;->msg:Ljava/lang/String;

    return-void
.end method
