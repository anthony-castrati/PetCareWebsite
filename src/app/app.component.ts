import { Component, OnInit} from '@angular/core';
import { Router, NavigationEnd } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent implements OnInit {
  constructor(private router: Router) { }

  ngOnInit() {
    this.router.events.subscribe((evt) => {
      if (!(evt instanceof NavigationEnd) || this.isServicesPage(evt.url)) {
          return;
      }
      window.scrollTo(0, 0);
    });
  }

  isServicesPage(url: string) {
    return url.startsWith('/services');
  }
}
