.class public Lcom/tudou/detail/vo/DetailFeature;
.super Ljava/lang/Object;
.source "DetailFeature.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/vo/DetailFeature$Feature;
    }
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public pg:I

.field public pz:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/DetailFeature$Feature;",
            ">;"
        }
    .end annotation
.end field

.field public total:I

.field public type:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public get(I)Lcom/tudou/detail/vo/DetailFeature$Feature;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/DetailFeature$Feature;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "ret":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 59
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/DetailFeature$Feature;

    .line 60
    .local v0, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v3, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    move-object v2, v0

    .line 66
    .end local v0    # "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getNextFeatureByVid(Ljava/lang/String;)Lcom/tudou/detail/vo/DetailFeature$Feature;
    .locals 5
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "ret":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/tudou/detail/vo/DetailFeature;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 74
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Lcom/tudou/detail/vo/DetailFeature$Feature;
    check-cast v2, Lcom/tudou/detail/vo/DetailFeature$Feature;

    .line 90
    .restart local v2    # "ret":Lcom/tudou/detail/vo/DetailFeature$Feature;
    :cond_0
    :goto_0
    return-object v2

    .line 77
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/DetailFeature$Feature;

    .line 79
    .local v0, "f":Lcom/tudou/detail/vo/DetailFeature$Feature;
    iget-object v3, v0, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 81
    iget-object v3, p0, Lcom/tudou/detail/vo/DetailFeature;->results:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ret":Lcom/tudou/detail/vo/DetailFeature$Feature;
    check-cast v2, Lcom/tudou/detail/vo/DetailFeature$Feature;

    .restart local v2    # "ret":Lcom/tudou/detail/vo/DetailFeature$Feature;
    goto :goto_0

    .line 83
    :cond_2
    const/4 v2, 0x0

    .line 85
    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
