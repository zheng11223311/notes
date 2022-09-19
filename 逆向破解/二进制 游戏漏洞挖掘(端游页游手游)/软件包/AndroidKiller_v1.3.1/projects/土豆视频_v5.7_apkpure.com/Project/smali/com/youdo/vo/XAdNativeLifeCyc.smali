.class public Lcom/youdo/vo/XAdNativeLifeCyc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;
    }
.end annotation


# instance fields
.field private mLifeCyc:Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

.field private ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    move v1, v2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    new-instance v4, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-direct {v4, p0, v5, v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;-><init>(Lcom/youdo/vo/XAdNativeLifeCyc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v1, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getStartDate()Ljava/util/Date;

    move-result-object v2

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    iget-object v3, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;-><init>(Lcom/youdo/vo/XAdNativeLifeCyc;Ljava/util/Date;Ljava/util/Date;)V

    iput-object v1, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->mLifeCyc:Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    :cond_3
    return-void
.end method


# virtual methods
.method public after(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getStartDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public afterCurrentSystemDate()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XAdNativeLifeCyc;->after(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public before(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    iget-object v1, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getEndDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeCurrentSystemDate()Ljava/lang/Boolean;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/youdo/vo/XAdNativeLifeCyc;->before(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public calculateTotalDays()I
    .locals 4

    const/16 v3, 0xb

    new-instance v1, Ljava/util/Date;

    const/16 v0, 0x7d0

    invoke-direct {v1, v0, v3, v3}, Ljava/util/Date;-><init>(III)V

    new-instance v0, Ljava/util/Date;

    const/16 v2, 0x833

    invoke-direct {v0, v2, v3, v3}, Ljava/util/Date;-><init>(III)V

    iget-object v2, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getStartDate()Ljava/util/Date;

    move-result-object v1

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    iget-object v2, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getEndDate()Ljava/util/Date;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Lorg/openad/common/util/DateUtils;->betweenDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public isDeliverableTime(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->ranges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0, p1}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->contains(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1
.end method

.method public isInTime(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->mLifeCyc:Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc;->mLifeCyc:Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;

    invoke-virtual {v0, p1}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->contains(Ljava/util/Date;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
