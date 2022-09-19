.class public Lcom/tudou/detail/vo/DetailFeature$Feature;
.super Ljava/lang/Object;
.source "DetailFeature.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/DetailFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Feature"
.end annotation


# instance fields
.field public cats:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public duration:I

.field public img:Ljava/lang/String;

.field public img_16_9:Ljava/lang/String;

.field public img_hd:Ljava/lang/String;

.field public itemCode:Ljava/lang/String;

.field public limit:Ljava/lang/String;

.field public pubdate:Ljava/lang/String;

.field public pv:Ljava/lang/String;

.field public pv_pr:Ljava/lang/String;

.field public reputation:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public stripe_bottom:Ljava/lang/String;

.field public tags:Ljava/lang/String;

.field final synthetic this$0:Lcom/tudou/detail/vo/DetailFeature;

.field public title:Ljava/lang/String;

.field public total_comment:I

.field public total_down:Ljava/lang/String;

.field public total_fav:I

.field public total_pv:I

.field public total_up:Ljava/lang/String;

.field public userid:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/vo/DetailFeature;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/tudou/detail/vo/DetailFeature$Feature;->this$0:Lcom/tudou/detail/vo/DetailFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/DetailFeature$Feature;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", img_16_9=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/DetailFeature$Feature;->img_16_9:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/detail/vo/DetailFeature$Feature;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
