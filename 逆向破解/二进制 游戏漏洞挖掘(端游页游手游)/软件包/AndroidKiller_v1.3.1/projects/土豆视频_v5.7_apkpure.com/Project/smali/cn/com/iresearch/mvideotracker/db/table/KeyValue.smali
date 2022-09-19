.class public Lcn/com/iresearch/mvideotracker/db/table/KeyValue;
.super Ljava/lang/Object;
.source "KeyValue.java"


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 41
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 40
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->sdf:Ljava/text/SimpleDateFormat;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->key:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->value:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/sql/Date;

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    sget-object v0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->key:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/com/iresearch/mvideotracker/db/table/KeyValue;->value:Ljava/lang/Object;

    .line 52
    return-void
.end method
