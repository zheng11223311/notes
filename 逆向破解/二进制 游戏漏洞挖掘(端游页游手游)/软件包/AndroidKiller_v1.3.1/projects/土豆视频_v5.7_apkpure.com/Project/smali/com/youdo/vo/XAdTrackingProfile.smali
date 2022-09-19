.class public Lcom/youdo/vo/XAdTrackingProfile;
.super Ljava/lang/Object;


# instance fields
.field public al:Ljava/lang/String;

.field public ap:Ljava/lang/String;

.field public at:Ljava/lang/String;

.field public aw:Ljava/lang/String;

.field public bl:Ljava/lang/String;

.field public ca:Ljava/lang/String;

.field public ck:Ljava/lang/String;

.field public cr:Ljava/lang/String;

.field public cs:Ljava/lang/String;

.field public dt:Ljava/lang/String;

.field public ie:Ljava/lang/String;

.field public oidtype:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public st:Ljava/lang/String;

.field public td:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public vl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "v"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->v:Ljava/lang/String;

    const-string v0, "at"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->at:Ljava/lang/String;

    const-string v0, "cs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->cs:Ljava/lang/String;

    const-string v0, "ca"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->ca:Ljava/lang/String;

    const-string v0, "ie"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->ie:Ljava/lang/String;

    const-string/jumbo v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->uid:Ljava/lang/String;

    const-string v0, "ck"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->ck:Ljava/lang/String;

    const-string v0, "al"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->al:Ljava/lang/String;

    const-string v0, "bl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->bl:Ljava/lang/String;

    const-string/jumbo v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->s:Ljava/lang/String;

    const-string/jumbo v0, "td"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->td:Ljava/lang/String;

    const-string/jumbo v0, "st"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->st:Ljava/lang/String;

    const-string/jumbo v0, "vl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->vl:Ljava/lang/String;

    const-string v0, "ap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->ap:Ljava/lang/String;

    const-string/jumbo v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->sid:Ljava/lang/String;

    const-string v0, "cr"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->cr:Ljava/lang/String;

    const-string v0, "oidtype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->oidtype:Ljava/lang/String;

    const-string v0, "os"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->os:Ljava/lang/String;

    const-string v0, "dt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->dt:Ljava/lang/String;

    const-string v0, "aw"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/youdo/vo/XAdTrackingProfile;->aw:Ljava/lang/String;

    return-void
.end method
