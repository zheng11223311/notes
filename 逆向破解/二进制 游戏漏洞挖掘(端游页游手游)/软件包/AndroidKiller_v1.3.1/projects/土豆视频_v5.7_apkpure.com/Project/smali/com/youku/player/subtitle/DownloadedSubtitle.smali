.class public Lcom/youku/player/subtitle/DownloadedSubtitle;
.super Ljava/lang/Object;
.source "DownloadedSubtitle.java"


# instance fields
.field public fullName:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public mode:I

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/youku/player/subtitle/DownloadedSubtitle;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/youku/player/subtitle/DownloadedSubtitle;->lang:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/youku/player/subtitle/DownloadedSubtitle;->path:Ljava/lang/String;

    .line 17
    iput p4, p0, Lcom/youku/player/subtitle/DownloadedSubtitle;->mode:I

    .line 18
    return-void
.end method
