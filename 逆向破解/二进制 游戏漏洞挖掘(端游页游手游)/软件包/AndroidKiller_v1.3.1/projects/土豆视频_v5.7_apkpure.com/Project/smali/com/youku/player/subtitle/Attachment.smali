.class public Lcom/youku/player/subtitle/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"


# instance fields
.field public attrachmentUrl:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "attrachmentUrl"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/youku/player/subtitle/Attachment;->lang:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/youku/player/subtitle/Attachment;->attrachmentUrl:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/youku/player/subtitle/Attachment;->type:Ljava/lang/String;

    .line 17
    return-void
.end method
