.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V

    .line 390
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportFailedBiometricUnlockAttempt()V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    goto :goto_0
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 399
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 421
    return-void
.end method

.method public showBackupSecurity()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showBackupSecurityScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 416
    return-void
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 386
    :cond_0
    return-void
.end method
